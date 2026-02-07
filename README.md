
#  Optimized Go Application with Multi-Stage Docker Builds

##  Project Overview
As a New Grad engineer, I wanted to demonstrate my understanding of **Cloud-Native best practices** and **Container Optimization**. This project showcases a Golang application dockerized using both a standard single-stage build and a professional-grade **Multi-Stage build**.

The goal was to minimize the final image size to improve deployment speed, reduce storage costs, and enhance security by reducing the attack surface.

---

##  The Implementation
I created a Go-based calculator application and implemented two different Dockerization strategies:

1.  **Single-Stage Build:** A native approach that includes the entire Go SDK and build tools in the production image.
2.  **Multi-Stage Build:** A professional approach that uses a `builder` stage to compile the code and a tiny `alpine` runner stage to execute it.



---

##  The Results (Image Size Comparison)
By moving to a multi-stage architecture, I achieved a massive reduction in image size:


calculator   slim          f8edd7d0e932   47 seconds ago       10.5MB
calculator   heavy         63c601e84639   About a minute ago   260MB

| :--- | :--- | :--- |
| **Single-Stage (`Dockerfile.heavy`)** | ~260 MB | ❌ Inefficient |
| **Multi-Stage (`Dockerfile`)** | **~10.5 MB** | ✅ Optimized |

**Total Size Reduction: ~98%**

---

##  Technical Stack
* **Language:** Golang
* **Platform:** AWS EC2 (Amazon Linux/Ubuntu)
* **Tools:** Docker, MobaXterm (SSH)
* **Security:** Minimalist Alpine Linux base image

---

## How to Run Locally
1. Clone the repository:
   ```bash
   git clone <your-repo-link>
