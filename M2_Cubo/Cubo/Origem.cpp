/* Hello Triangle - c�digo adaptado de https://learnopengl.com/#!Getting-started/Hello-Triangle
 *
 * Adaptado por Rossana Baptista Queiroz
 * para a disciplina de Processamento Gr�fico - Jogos Digitais - Unisinos
 * Vers�o inicial: 7/4/2017
 * �ltima atualiza��o em 12/05/2023
 *
 */

#include <iostream>
#include <string>
#include <assert.h>

using namespace std;

// GLAD
#include <glad/glad.h>

// GLFW
#include <GLFW/glfw3.h>

//GLM
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>


#include "shader.h"

const GLuint WIDTH = 1000, HEIGHT = 1000;
bool rotateRightX = false, rotateLeftX = false, rotateUpY = false, rotateDownY = false, rotateUpZ = false, rotateDownZ = false, zoonIn = false, zoonOut = false;
float zoonValue = 0;

glm::mat4 applyEffects(glm::mat4 model) {
		float angle = (GLfloat)glfwGetTime();

		if (rotateRightX)
			model = glm::rotate(model, angle, glm::vec3(0.0f, -0.5f, 0.0f));

		else if (rotateLeftX)
			model = glm::rotate(model, angle, glm::vec3(0.0f, 0.5f, 0.0f));

		else if (rotateDownY)
			model = glm::rotate(model, angle, glm::vec3(-0.5f, 0.0f, 0.0f));

		else if (rotateUpY)
			model = glm::rotate(model, angle, glm::vec3(0.5f, 0.0f, 0.0f));

		else if (rotateUpZ)
			model = glm::rotate(model, angle, glm::vec3(0.0f, 0.0f, -0.5f));

		else if (rotateDownZ)
			model = glm::rotate(model, angle, glm::vec3(0.0f, 0.0f, 0.5f));

		// Zoom
		if (zoonIn)
			zoonValue = zoonValue >= 0.2f ? zoonValue : zoonValue + 0.01f;

		else if (zoonOut)
			zoonValue = zoonValue <= -0.7f ? zoonValue : zoonValue - 0.1f;

		if (zoonIn or zoonOut)
			model = glm::scale(model, glm::vec3((model[0][0] + zoonValue) / 2));

		return model;
}

void key_callback(GLFWwindow* window, int key, int scancode, int action, int mode)
{
	if (action != GLFW_PRESS)
		return;

	rotateRightX = false;
	rotateLeftX = false;
	rotateUpY = false;
	rotateDownY = false;
	rotateUpZ = false;
	rotateDownZ = false;
	zoonIn = false;
	zoonOut = false;

	switch (key)
	{
		case  GLFW_KEY_ESCAPE:
			glfwSetWindowShouldClose(window, GL_TRUE);
			break;

		case GLFW_KEY_D:
			rotateRightX = true;
			break;

		case GLFW_KEY_A:
			rotateLeftX = true;
			break;

		case GLFW_KEY_W:
			rotateUpY = true;
			break;

		case GLFW_KEY_S:
			rotateDownY = true;
			break;

		case GLFW_KEY_E:
			rotateUpZ = true;
			break;

		case GLFW_KEY_Q:
			rotateDownZ = true;
			break;


		case GLFW_KEY_L:
			zoonIn = true;
			break;

		case GLFW_KEY_K:
			zoonOut = true;
			break;
	}
}

int setupGeometry()
{
	GLfloat vertices[] =
	{
		// Frente
		-0.5, 0.5, -0.5, 1.0, 0.0, 0.0,
		-0.5, -0.5, -0.5, 1.0, 0.0, 0.0,
		0.5, -0.5, -0.5, 1.0, 0.0, 0.0,

		-0.5, 0.5, -0.5, 0.0, 0.0, 1.0,
		0.5, 0.5, -0.5, 0.0, 0.0, 1.0,
		0.5, -0.5, -0.5, 0.0, 0.0, 1.0,

		// Fundo
		-0.5, 0.5, 0.5, 1.0, 0.0, 1.0,
		-0.5, -0.5, 0.5, 1.0, 0.0, 1.0,
		0.5, -0.5, 0.5, 1.0, 0.0, 1.0,

		-0.5, 0.5, 0.5, 0.0, 1.0, 1.0,
		0.5, 0.5, 0.5, 0.0, 1.0, 1.0,
		0.5, -0.5, 0.5, 0.0, 1.0, 1.0,

		// Cima
		-0.5, 0.5, -0.5, 0.0, 0.0, 0.0,
		-0.5, 0.5, 0.5, 0.0, 0.0, 0.0,
		0.5, 0.5, -0.5, 0.0, 0.0, 0.0,

		-0.5, 0.5, 0.5, 0.4, 1.0, 0.5,
		0.5, 0.5, -0.5, 0.4, 1.0, 0.5,
		0.5, 0.5, 0.5, 0.4, 1.0, 0.5,

		// Baixo
		0.5, -0.5, -0.5, 0.3, 0.3, 0.3,
		0.5, -0.5, 0.5, 0.3, 0.3, 0.3,
		-0.5, -0.5, -0.5, 0.3, 0.3, 0.3,

		0.5, -0.5, 0.5, 0.4, 0.3, 0.7,
		-0.5, -0.5, -0.5, 0.4, 0.3, 0.7,
		-0.5, -0.5, 0.5, 0.4, 0.3, 0.7,

		// Esquerda
		-0.5, 0.5, -0.5, 0.2, 0.7, 0.4,
		-0.5, -0.5, -0.5, 0.2, 0.7, 0.4,
		- 0.5, -0.5, 0.5, 0.2, 0.7, 0.4,

		-0.5, 0.5, -0.5, 1.0, 0.2, 0.7,
		-0.5, 0.5, 0.5, 1.0, 0.2, 0.7,
		-0.5, -0.5, 0.5, 1.0, 0.2, 0.7,

		// Direita
		0.5, 0.5, -0.5, 0.4, 0.5, 0.4,
		0.5, -0.5, -0.5, 0.4, 0.5, 0.4,
		0.5, -0.5, 0.5, 0.4, 0.5, 0.4,

		0.5, 0.5, -0.5, 1.0, 0.4, 0.3,
		0.5, 0.5, 0.5, 1.0, 0.4, 0.3,
		0.5, -0.5, 0.5, 1.0, 0.4, 0.3
	};

	GLuint VBO, VAO;
	glGenBuffers(1, &VBO);
	glBindBuffer(GL_ARRAY_BUFFER, VBO);
	glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

	glGenVertexArrays(1, &VAO);
	glBindVertexArray(VAO);

	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(GLfloat), (GLvoid*)0);
	glEnableVertexAttribArray(0);

	glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(GLfloat), (GLvoid*)(3*sizeof(GLfloat)));
	glEnableVertexAttribArray(1);

	glBindBuffer(GL_ARRAY_BUFFER, 0);
	glBindVertexArray(0);

	return VAO;
}

int main()
{
	glfwInit();

	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 1);
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

#ifdef __APPLE__
	glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
#endif

	GLFWwindow* window = glfwCreateWindow(WIDTH, HEIGHT, "M2 - lzampier - Cubo", nullptr, nullptr);
	glfwMakeContextCurrent(window);

	glfwSetKeyCallback(window, key_callback);

	if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
	{
		std::cout << "Failed to initialize GLAD" << std::endl;

	}

	const GLubyte* renderer = glGetString(GL_RENDERER); /* get renderer string */
	const GLubyte* version = glGetString(GL_VERSION); /* version as a string */
	cout << "Renderer: " << renderer << endl;
	cout << "OpenGL version supported " << version << endl;

	int width, height;
	glfwGetFramebufferSize(window, &width, &height);
	glViewport(0, 0, width, height);

	// Compilando e buildando o programa de shader
	Shader shaderProgram("shaders/vertex.glsl", "./shaders/fragment.glsl");

	// Gerando um buffer simples, com a geometria de um tri�ngulo
	GLuint VAO = setupGeometry();

	glEnable(GL_DEPTH_TEST);
	float rotation = 0.0f;

	while (!glfwWindowShouldClose(window))
	{
		glfwPollEvents();

		// Limpa o buffer de cor
		glClearColor(0.07f, 0.13f, 0.17f, 1.0f);
		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

		shaderProgram.activate();

		glBindVertexArray(VAO);

		glm::mat4 model1 = glm::mat4(1.0f);
		glm::mat4 model2 = glm::mat4(1.0f);

		// Cubo 1
		model1 = glm::translate(model1, glm::vec3(-0.4f, -0.4f, 0.0f));
		model1 = applyEffects(model1);
		glUniformMatrix4fv(glGetUniformLocation(shaderProgram.ID, "model"), 1, false, glm::value_ptr(model1));
		glDrawArrays(GL_TRIANGLES, 0, 36);

		// Cubo 2
		model2 = glm::translate(model2, glm::vec3(0.4f, 0.4f, 0.0f));
		model2 = applyEffects(model2);
		glUniformMatrix4fv(glGetUniformLocation(shaderProgram.ID, "model"), 1, false, glm::value_ptr(model2));
		glDrawArrays(GL_TRIANGLES, 0, 36);

		glBindVertexArray(0);

		glfwSwapBuffers(window);
	}

	glDeleteVertexArrays(1, &VAO);
	glfwTerminate();
	return 0;
}