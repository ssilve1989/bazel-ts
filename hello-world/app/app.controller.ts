import { Controller, Get } from "@nestjs/common";

@Controller()
class AppController {
  @Get()
  sayHello() {
    return 'Hello Steve'
  }
}
export { AppController };