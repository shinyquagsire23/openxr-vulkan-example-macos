contents = open("src/shaders/Template.vert", "r").read()

for i in range(0, 64):
    mod = contents.replace("REPLACE", str(i))
    name = "shaders/Pt" + str(i) + ".vert"
    with open("src/" + name, "w") as f:
        f.write(mod)
        f.close()
    print ("glslc --target-env=vulkan1.2 " + name + " -std=450core -O -o " + name + ".spv && \\")