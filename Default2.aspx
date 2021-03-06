﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <script src="https://github.com/mrdoob/three.js/raw/master/build/Three.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <script language="javascript" type="text/javascript">
        var camera, scene, renderer,
    geometry, material, mesh;

        init();
        animate();

        function init() {

            camera = new THREE.Camera(75, window.innerWidth / window.innerHeight, 1, 10000);
            camera.position.z = 1000;

            scene = new THREE.Scene();

            geometry = new THREE.CubeGeometry(200, 200, 200);
            material = new THREE.MeshBasicMaterial({ color: 0xff0000, wireframe: true });

            mesh = new THREE.Mesh(geometry, material);
            scene.addObject(mesh);

            renderer = new THREE.CanvasRenderer();
            renderer.setSize(window.innerWidth, window.innerHeight);

            document.body.appendChild(renderer.domElement);

        }

        function animate() {

            // Include examples/js/RequestAnimationFrame.js for cross-browser compatibility.
            requestAnimationFrame(animate);
            render();

        }

        function render() {

            mesh.rotation.x += 0.01;
            mesh.rotation.y += 0.02;

            renderer.render(scene, camera);

        }
    </script>
</asp:Content>
