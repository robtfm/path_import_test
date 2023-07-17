#import bevy_pbr::mesh_vertex_output MeshVertexOutput

#ifdef EXAMPLE
    #import "shaders/func_b.wgsl" f
#else
    #import "shaders/func_a.wgsl" f
#endif

#import "shaders/func_c.wgsl" blah

@fragment
fn fragment(
    mesh: MeshVertexOutput,
) -> @location(0) vec4<f32> {
    return f(mesh) * blah();
}
