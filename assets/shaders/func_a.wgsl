#import bevy_pbr::mesh_vertex_output MeshVertexOutput

struct CustomMaterial {
    color: vec4<f32>,
};

@group(1) @binding(0)
var<uniform> material: CustomMaterial;
@group(1) @binding(1)
var base_color_texture: texture_2d<f32>;
@group(1) @binding(2)
var base_color_sampler: sampler;

fn f(
    mesh: MeshVertexOutput,
) -> vec4<f32> {
    return vec4<f32>(1.0, 0.0, 0.0, 1.0) * textureSample(base_color_texture, base_color_sampler, mesh.uv);
}
