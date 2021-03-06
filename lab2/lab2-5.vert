#version 150

in  vec3 in_Position;
in  vec3 in_Normal;
out vec3 inNormal;
uniform mat4 rotMatrix;
out vec4 vertcolor;
in vec2 inTexCoord;
out vec2 outTexCoord;
uniform mat4 projectionMatrix;
uniform mat4 mdlMatrix;
uniform mat4 wtvMatrix;
void main(void)
{
	gl_Position = projectionMatrix*wtvMatrix*mdlMatrix*vec4(in_Position, 1.0);
	mat3 rotation = mat3(mdlMatrix);
	inNormal = rotation*in_Normal;
	//vec3 norm = in_Normal.xyz;
	//vertcolor = vec4(norm.z,norm.z,norm.z, 1.0);
	outTexCoord = inTexCoord;
}
