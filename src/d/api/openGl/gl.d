module gl;

// from https://www.khronos.org/registry/gles/api/1.0/gl.h

/* Extensions */
;const uint GL_OES_VERSION_1_0               = 1
;const uint GL_OES_read_format               = 1
;const uint GL_OES_compressed_paletted_texture= 1

/* ClearBufferMask */
;const uint GL_DEPTH_BUFFER_BIT              = 0x00000100
;const uint GL_STENCIL_BUFFER_BIT            = 0x00000400
;const uint GL_COLOR_BUFFER_BIT              = 0x00004000

/* Boolean */
;const uint GL_FALSE                         = 0
;const uint GL_TRUE                          = 1

/* BeginMode */
;const uint GL_POINTS                         = 0x0000
;const uint GL_LINES                          = 0x0001
;const uint GL_LINE_LOOP                      = 0x0002
;const uint GL_LINE_STRIP                     = 0x0003
;const uint GL_TRIANGLES                      = 0x0004
;const uint GL_TRIANGLE_STRIP                 = 0x0005
;const uint GL_TRIANGLE_FAN                   = 0x0006

/* AlphaFunction */
;const uint GL_NEVER                          = 0x0200
;const uint GL_LESS                           = 0x0201
;const uint GL_EQUAL                          = 0x0202
;const uint GL_LEQUAL                         = 0x0203
;const uint GL_GREATER                        = 0x0204
;const uint GL_NOTEQUAL                       = 0x0205
;const uint GL_GEQUAL                         = 0x0206
;const uint GL_ALWAYS                         = 0x0207

/* BlendingFactorDest */
;const uint GL_ZERO                           = 0
;const uint GL_ONE                            = 1
;const uint GL_SRC_COLOR                      = 0x0300
;const uint GL_ONE_MINUS_SRC_COLOR            = 0x0301
;const uint GL_SRC_ALPHA                      = 0x0302
;const uint GL_ONE_MINUS_SRC_ALPHA            = 0x0303
;const uint GL_DST_ALPHA                      = 0x0304
;const uint GL_ONE_MINUS_DST_ALPHA            = 0x0305

/* BlendingFactorSrc */
/*      GL_ZERO */
/*      GL_ONE */
;const uint GL_DST_COLOR                      = 0x0306
;const uint GL_ONE_MINUS_DST_COLOR            = 0x0307
;const uint GL_SRC_ALPHA_SATURATE             = 0x0308
/*      GL_SRC_ALPHA */
/*      GL_ONE_MINUS_SRC_ALPHA */
/*      GL_DST_ALPHA */
/*      GL_ONE_MINUS_DST_ALPHA */

/* ColorMaterialFace */
/*      GL_FRONT_AND_BACK */

/* ColorMaterialParameter */
/*      GL_AMBIENT_AND_DIFFUSE */

/* ColorPointerType */
/*      GL_UNSIGNED_BYTE */
/*      GL_FLOAT */
/*      GL_FIXED */

/* CullFaceMode */
;const uint GL_FRONT                          = 0x0404
;const uint GL_BACK                           = 0x0405
;const uint GL_FRONT_AND_BACK                 = 0x0408

/* DepthFunction */
/*      GL_NEVER */
/*      GL_LESS */
/*      GL_EQUAL */
/*      GL_LEQUAL */
/*      GL_GREATER */
/*      GL_NOTEQUAL */
/*      GL_GEQUAL */
/*      GL_ALWAYS */

/* EnableCap */
;const uint GL_FOG                            = 0x0B60
;const uint GL_LIGHTING                       = 0x0B50
;const uint GL_TEXTURE_2D                     = 0x0DE1
;const uint GL_CULL_FACE                      = 0x0B44
;const uint GL_ALPHA_TEST                     = 0x0BC0
;const uint GL_BLEND                          = 0x0BE2
;const uint GL_COLOR_LOGIC_OP                 = 0x0BF2
;const uint GL_DITHER                         = 0x0BD0
;const uint GL_STENCIL_TEST                   = 0x0B90
;const uint GL_DEPTH_TEST                     = 0x0B71
/*      GL_LIGHT0 */
/*      GL_LIGHT1 */
/*      GL_LIGHT2 */
/*      GL_LIGHT3 */
/*      GL_LIGHT4 */
/*      GL_LIGHT5 */
/*      GL_LIGHT6 */
/*      GL_LIGHT7 */
;const uint GL_POINT_SMOOTH                   = 0x0B10
;const uint GL_LINE_SMOOTH                    = 0x0B20
;const uint GL_SCISSOR_TEST                   = 0x0C11
;const uint GL_COLOR_MATERIAL                 = 0x0B57
;const uint GL_NORMALIZE                      = 0x0BA1
;const uint GL_RESCALE_NORMAL                 = 0x803A
;const uint GL_POLYGON_OFFSET_FILL            = 0x8037
;const uint GL_VERTEX_ARRAY                   = 0x8074
;const uint GL_NORMAL_ARRAY                   = 0x8075
;const uint GL_COLOR_ARRAY                    = 0x8076
;const uint GL_TEXTURE_COORD_ARRAY            = 0x8078
;const uint GL_MULTISAMPLE                    = 0x809D
;const uint GL_SAMPLE_ALPHA_TO_COVERAGE       = 0x809E
;const uint GL_SAMPLE_ALPHA_TO_ONE            = 0x809F
;const uint GL_SAMPLE_COVERAGE                = 0x80A0

/* ErrorCode */
;const uint GL_NO_ERROR                       = 0
;const uint GL_INVALID_ENUM                   = 0x0500
;const uint GL_INVALID_VALUE                  = 0x0501
;const uint GL_INVALID_OPERATION              = 0x0502
;const uint GL_STACK_OVERFLOW                 = 0x0503
;const uint GL_STACK_UNDERFLOW                = 0x0504
;const uint GL_OUT_OF_MEMORY                  = 0x0505

/* FogMode */
/*      GL_LINEAR */
;const uint GL_EXP                            = 0x0800
;const uint GL_EXP2                           = 0x0801

/* FogParameter */
;const uint GL_FOG_DENSITY                    = 0x0B62
;const uint GL_FOG_START                      = 0x0B63
;const uint GL_FOG_END                        = 0x0B64
;const uint GL_FOG_MODE                       = 0x0B65
;const uint GL_FOG_COLOR                      = 0x0B66

/* FrontFaceDirection */
;const uint GL_CW                             = 0x0900
;const uint GL_CCW                            = 0x0901

/* GetPName */
;const uint GL_SMOOTH_POINT_SIZE_RANGE        = 0x0B12
;const uint GL_SMOOTH_LINE_WIDTH_RANGE        = 0x0B22
;const uint GL_ALIASED_POINT_SIZE_RANGE       = 0x846D
;const uint GL_ALIASED_LINE_WIDTH_RANGE       = 0x846E
;const uint GL_IMPLEMENTATION_COLOR_READ_TYPE_OES = 0x8B9A
;const uint GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES = 0x8B9B
;const uint GL_MAX_LIGHTS                     = 0x0D31
;const uint GL_MAX_TEXTURE_SIZE               = 0x0D33
;const uint GL_MAX_MODELVIEW_STACK_DEPTH      = 0x0D36
;const uint GL_MAX_PROJECTION_STACK_DEPTH     = 0x0D38
;const uint GL_MAX_TEXTURE_STACK_DEPTH        = 0x0D39
;const uint GL_MAX_VIEWPORT_DIMS              = 0x0D3A
;const uint GL_MAX_ELEMENTS_VERTICES          = 0x80E8
;const uint GL_MAX_ELEMENTS_INDICES           = 0x80E9
;const uint GL_MAX_TEXTURE_UNITS              = 0x84E2
;const uint GL_NUM_COMPRESSED_TEXTURE_FORMATS = 0x86A2
;const uint GL_COMPRESSED_TEXTURE_FORMATS     = 0x86A3
;const uint GL_SUBPIXEL_BITS                  = 0x0D50
;const uint GL_RED_BITS                       = 0x0D52
;const uint GL_GREEN_BITS                     = 0x0D53
;const uint GL_BLUE_BITS                      = 0x0D54
;const uint GL_ALPHA_BITS                     = 0x0D55
;const uint GL_DEPTH_BITS                     = 0x0D56
;const uint GL_STENCIL_BITS                   = 0x0D57

/* HintMode */
;const uint GL_DONT_CARE                      = 0x1100
;const uint GL_FASTEST                        = 0x1101
;const uint GL_NICEST                         = 0x1102

/* HintTarget */
;const uint GL_PERSPECTIVE_CORRECTION_HINT    = 0x0C50
;const uint GL_POINT_SMOOTH_HINT              = 0x0C51
;const uint GL_LINE_SMOOTH_HINT               = 0x0C52
;const uint GL_POLYGON_SMOOTH_HINT            = 0x0C53
;const uint GL_FOG_HINT                       = 0x0C54

/* LightModelParameter */
;const uint GL_LIGHT_MODEL_AMBIENT            = 0x0B53
;const uint GL_LIGHT_MODEL_TWO_SIDE           = 0x0B52

/* LightParameter */
;const uint GL_AMBIENT                        = 0x1200
;const uint GL_DIFFUSE                        = 0x1201
;const uint GL_SPECULAR                       = 0x1202
;const uint GL_POSITION                       = 0x1203
;const uint GL_SPOT_DIRECTION                 = 0x1204
;const uint GL_SPOT_EXPONENT                  = 0x1205
;const uint GL_SPOT_CUTOFF                    = 0x1206
;const uint GL_CONSTANT_ATTENUATION           = 0x1207
;const uint GL_LINEAR_ATTENUATION             = 0x1208
;const uint GL_QUADRATIC_ATTENUATION          = 0x1209

/* DataType */
;const uint GL_BYTE                           = 0x1400
;const uint GL_UNSIGNED_BYTE                  = 0x1401
;const uint GL_SHORT                          = 0x1402
;const uint GL_UNSIGNED_SHORT                 = 0x1403
;const uint GL_FLOAT                          = 0x1406
;const uint GL_FIXED                          = 0x140C

/* LogicOp */
;const uint GL_CLEAR                          = 0x1500
;const uint GL_AND                            = 0x1501
;const uint GL_AND_REVERSE                    = 0x1502
;const uint GL_COPY                           = 0x1503
;const uint GL_AND_INVERTED                   = 0x1504
;const uint GL_NOOP                           = 0x1505
;const uint GL_XOR                            = 0x1506
;const uint GL_OR                             = 0x1507
;const uint GL_NOR                            = 0x1508
;const uint GL_EQUIV                          = 0x1509
;const uint GL_INVERT                         = 0x150A
;const uint GL_OR_REVERSE                     = 0x150B
;const uint GL_COPY_INVERTED                  = 0x150C
;const uint GL_OR_INVERTED                    = 0x150D
;const uint GL_NAND                           = 0x150E
;const uint GL_SET                            = 0x150F

/* MaterialFace */
/*      GL_FRONT_AND_BACK */

/* MaterialParameter */
;const uint GL_EMISSION                       = 0x1600
;const uint GL_SHININESS                      = 0x1601
;const uint GL_AMBIENT_AND_DIFFUSE            = 0x1602
/*      GL_AMBIENT */
/*      GL_DIFFUSE */
/*      GL_SPECULAR */

/* MatrixMode */
;const uint GL_MODELVIEW                      = 0x1700
;const uint GL_PROJECTION                     = 0x1701
;const uint GL_TEXTURE                        = 0x1702

/* NormalPointerType */
/*      GL_BYTE */
/*      GL_SHORT */
/*      GL_FLOAT */
/*      GL_FIXED */

/* PixelFormat */
;const uint GL_ALPHA                          = 0x1906
;const uint GL_RGB                            = 0x1907
;const uint GL_RGBA                           = 0x1908
;const uint GL_LUMINANCE                      = 0x1909
;const uint GL_LUMINANCE_ALPHA                = 0x190A

/* PixelStoreParameter */
;const uint GL_UNPACK_ALIGNMENT               = 0x0CF5
;const uint GL_PACK_ALIGNMENT                 = 0x0D05

/* PixelType */
/*      GL_UNSIGNED_BYTE */
;const uint GL_UNSIGNED_SHORT_4_4_4_4         = 0x8033
;const uint GL_UNSIGNED_SHORT_5_5_5_1         = 0x8034
;const uint GL_UNSIGNED_SHORT_5_6_5           = 0x8363

/* ShadingModel */
;const uint GL_FLAT                           = 0x1D00
;const uint GL_SMOOTH                         = 0x1D01

/* StencilFunction */
/*      GL_NEVER */
/*      GL_LESS */
/*      GL_EQUAL */
/*      GL_LEQUAL */
/*      GL_GREATER */
/*      GL_NOTEQUAL */
/*      GL_GEQUAL */
/*      GL_ALWAYS */

/* StencilOp */
/*      GL_ZERO */
;const uint GL_KEEP                           = 0x1E00
;const uint GL_REPLACE                        = 0x1E01
;const uint GL_INCR                           = 0x1E02
;const uint GL_DECR                           = 0x1E03
/*      GL_INVERT */

/* StringName */
;const uint GL_VENDOR                         = 0x1F00
;const uint GL_RENDERER                       = 0x1F01
;const uint GL_VERSION                        = 0x1F02
;const uint GL_EXTENSIONS                     = 0x1F03

/* TexCoordPointerType */
/*      GL_SHORT */
/*      GL_FLOAT */
/*      GL_FIXED */
/*      GL_BYTE */

/* TextureEnvMode */
;const uint GL_MODULATE                       = 0x2100
;const uint GL_DECAL                          = 0x2101
/*      GL_BLEND */
;const uint GL_ADD                            = 0x0104
/*      GL_REPLACE */

/* TextureEnvParameter */
;const uint GL_TEXTURE_ENV_MODE               = 0x2200
;const uint GL_TEXTURE_ENV_COLOR              = 0x2201

/* TextureEnvTarget */
;const uint GL_TEXTURE_ENV                    = 0x2300

/* TextureMagFilter */
;const uint GL_NEAREST                        = 0x2600
;const uint GL_LINEAR                         = 0x2601

/* TextureMinFilter */
/*      GL_NEAREST */
/*      GL_LINEAR */
;const uint GL_NEAREST_MIPMAP_NEAREST         = 0x2700
;const uint GL_LINEAR_MIPMAP_NEAREST          = 0x2701
;const uint GL_NEAREST_MIPMAP_LINEAR          = 0x2702
;const uint GL_LINEAR_MIPMAP_LINEAR           = 0x2703

/* TextureParameterName */
;const uint GL_TEXTURE_MAG_FILTER             = 0x2800
;const uint GL_TEXTURE_MIN_FILTER             = 0x2801
;const uint GL_TEXTURE_WRAP_S                 = 0x2802
;const uint GL_TEXTURE_WRAP_T                 = 0x2803

/* TextureTarget */
/*      GL_TEXTURE_2D */

/* TextureUnit */
;const uint GL_TEXTURE0                       = 0x84C0
;const uint GL_TEXTURE1                       = 0x84C1
;const uint GL_TEXTURE2                       = 0x84C2
;const uint GL_TEXTURE3                       = 0x84C3
;const uint GL_TEXTURE4                       = 0x84C4
;const uint GL_TEXTURE5                       = 0x84C5
;const uint GL_TEXTURE6                       = 0x84C6
;const uint GL_TEXTURE7                       = 0x84C7
;const uint GL_TEXTURE8                       = 0x84C8
;const uint GL_TEXTURE9                       = 0x84C9
;const uint GL_TEXTURE10                      = 0x84CA
;const uint GL_TEXTURE11                      = 0x84CB
;const uint GL_TEXTURE12                      = 0x84CC
;const uint GL_TEXTURE13                      = 0x84CD
;const uint GL_TEXTURE14                      = 0x84CE
;const uint GL_TEXTURE15                      = 0x84CF
;const uint GL_TEXTURE16                      = 0x84D0
;const uint GL_TEXTURE17                      = 0x84D1
;const uint GL_TEXTURE18                      = 0x84D2
;const uint GL_TEXTURE19                      = 0x84D3
;const uint GL_TEXTURE20                      = 0x84D4
;const uint GL_TEXTURE21                      = 0x84D5
;const uint GL_TEXTURE22                      = 0x84D6
;const uint GL_TEXTURE23                      = 0x84D7
;const uint GL_TEXTURE24                      = 0x84D8
;const uint GL_TEXTURE25                      = 0x84D9
;const uint GL_TEXTURE26                      = 0x84DA
;const uint GL_TEXTURE27                      = 0x84DB
;const uint GL_TEXTURE28                      = 0x84DC
;const uint GL_TEXTURE29                      = 0x84DD
;const uint GL_TEXTURE30                      = 0x84DE
;const uint GL_TEXTURE31                      = 0x84DF

/* TextureWrapMode */
;const uint GL_REPEAT                         = 0x2901
;const uint GL_CLAMP_TO_EDGE                  = 0x812F

/* PixelInternalFormat */
;const uint GL_PALETTE4_RGB8_OES              = 0x8B90
;const uint GL_PALETTE4_RGBA8_OES             = 0x8B91
;const uint GL_PALETTE4_R5_G6_B5_OES          = 0x8B92
;const uint GL_PALETTE4_RGBA4_OES             = 0x8B93
;const uint GL_PALETTE4_RGB5_A1_OES           = 0x8B94
;const uint GL_PALETTE8_RGB8_OES              = 0x8B95
;const uint GL_PALETTE8_RGBA8_OES             = 0x8B96
;const uint GL_PALETTE8_R5_G6_B5_OES          = 0x8B97
;const uint GL_PALETTE8_RGBA4_OES             = 0x8B98
;const uint GL_PALETTE8_RGB5_A1_OES           = 0x8B99

/* VertexPointerType */
/*      GL_SHORT */
/*      GL_FLOAT */
/*      GL_FIXED */
/*      GL_BYTE */

/* LightName */
;const uint GL_LIGHT0                         = 0x4000
;const uint GL_LIGHT1                         = 0x4001
;const uint GL_LIGHT2                         = 0x4002
;const uint GL_LIGHT3                         = 0x4003
;const uint GL_LIGHT4                         = 0x4004
;const uint GL_LIGHT5                         = 0x4005
;const uint GL_LIGHT6                         = 0x4006
;const uint GL_LIGHT7                         = 0x4007

;;


/*
old hardwritten

const uint GL_UNSIGNED_SHORT = 0x1403;

/+ Enalbe cap +/
const uint GL_BLEND   = 0x0BE2;
const uint GL_DITHER  = 0x0BD0;


/+ BlendingFactorDest +/
const uint GL_ZERO                = 0;
const uint GL_ONE                 = 1;
const uint GL_SRC_COLOR           = 0x0300;
const uint GL_ONE_MINUS_SRC_COLOR = 0x0301;
const uint GL_SRC_ALPHA           = 0x0302;
const uint GL_ONE_MINUS_SRC_ALPHA = 0x0303;
const uint GL_DST_ALPHA           = 0x0304;
const uint GL_ONE_MINUS_DST_ALPHA = 0x0305;

/+ BlendingFactorSrc +/
const uint GL_DST_COLOR           = 0x0306;
const uint GL_ONE_MINUS_DST_COLOR = 0x0307;
const uint GL_SRC_ALPHA_SATURATE  = 0x0308;

/+ BeginMode +/
const uint GL_POINTS         = 0x0000;
const uint GL_LINES          = 0x0001;
const uint GL_LINE_LOOP      = 0x0002;
const uint GL_LINE_STRIP     = 0x0003;
const uint GL_TRIANGLES      = 0x0004;
const uint GL_TRIANGLE_STRIP = 0x0005;
const uint GL_TRIANGLE_FAN   = 0x0006;
const uint GL_QUADS          = 0x0007;
const uint GL_QUAD_STRIP     = 0x0008;
const uint GL_POLYGON        = 0x0009;

const uint GL_COLOR_BUFFER_BIT = 0x00004000;
const uint GL_DEPTH_BUFFER_BIT = 0x00000100;

const uint GL_DEPTH_TEST = 0x0B71;
const uint GL_TEXTURE_2D = 0x0DE1;

const uint GL_TEXTURE_MAG_FILTER = 0x2800;
const uint GL_TEXTURE_MIN_FILTER = 0x2801;

/+ TextureMagFilter +/
const uint GL_NEAREST = 0x2600;
const uint GL_LINEAR  = 0x2601;

const uint GL_RGB  = 0x1907;
const uint GL_RGBA = 0x1908;

const uint GL_UNSIGNED_BYTE = 0x1401;

// matrix mode
const uint GL_PROJECTION = 0x1701;
const uint GL_MODELVIEW  = 0x1700;

// buffer
const uint GL_ARRAY_BUFFER         = 0x8892;
const uint GL_ELEMENT_ARRAY_BUFFER = 0x8893;

const uint GL_STATIC_DRAW          = 0x88E4;
const uint GL_DYNAMIC_DRAW         = 0x88E8;

const uint GL_NO_ERROR = 0;

const uint GL_EXTENSIONS = 0x1F03;

const uint GL_FALSE = 0;
const uint GL_TRUE  = 1;

const uint GL_FLOAT = 0x1406;
*/

// for testing
const uint GL_PROJECTION_MATRIX       =       0x0BA7;

// debgugging
const uint GL_ARRAY_BUFFER_BINDING = 0x8894;

alias uint GLenum;
alias float GLclampf;
alias uint GLuint;
alias int GLint;
alias int GLsizei;
alias void GLvoid; // maybe wrong
alias ulong GLsizeiptr; // on 64 bit sizeof() = 8
alias char GLboolean;
alias float GLfloat;

extern(System)
{
	// Opengl pre 3.0 void glLoadIdentity();

	// Opengl pre 3.0 void glBegin(uint Mode);
	// Opengl pre 3.0 void glEnd();

	// Opengl pre 3.0 void glPopMatrix();
	// Opengl pre 3.0 void glPushMatrix();

	void glClear(uint Mask);
	void glClearColor (GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);

	// Opengl pre 3.0 void glTranslatef(float x, float y, float z);
	// Opengl pre 3.0 void glRotatef(float Degree, float x, float y, float z);
    // Opengl pre 3.0 void glScalef(float x, float y, float z);
    
	// Opengl pre 3.0 void glVertex3f(float x, float y, float z);

	void glEnable(uint);
	void glDisable(uint);

	// Opengl pre 3.0 void glColor3f(float, float, float);


	void glBlendFunc(GLenum sfactor, GLenum dfactor);

	void glGenTextures(uint n, uint *textures);
	void glBindTexture(uint target, uint texture);
	void glTexImage2D(uint target, int level, int internalformat, uint width, uint height, int border, uint format, uint type, void *pixels);
	void glTexParameteri(uint target, uint pname, int param);
	void glTexCoord2f(float s, float t);

	// TODO< throw out for OpenGL 3.0?
	void glViewport(int x, int y, int width, int height);
	void glLineWidth(float width);

	// Opengl pre 3.0 void glOrtho(double, double, double, double, double, double);

	// Opengl pre 3.0 void glMatrixMode(uint mode);

	uint glGetError();

	immutable(char) *glGetString(uint name);

	void glDrawArrays(GLenum mode, GLint first, GLsizei count);
	void glDrawElements(GLenum mode, GLsizei count, GLenum type, const GLvoid *indices);

	// for testing/debugging
	void glGetFloatv(GLenum pname, GLfloat *params);

	void glGetIntegerv(GLenum pname, GLint *params);

	void glDepthFunc (GLenum func);
	void glDepthMask (GLboolean flag);

	void glHint (GLenum target, GLenum mode);

	void glStencilFunc (GLenum func, GLint ref_, GLuint mask);
	void glStencilMask (GLuint mask);
	void glStencilOp (GLenum fail, GLenum zfail, GLenum zpass);

	void glReadPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *pixels);
	void glClearDepthf (GLclampf depth);
}
