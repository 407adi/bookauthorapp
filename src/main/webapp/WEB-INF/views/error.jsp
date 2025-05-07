
@Controller
public class ErrorController {

    @RequestMapping("/error")
    public String handleError() {
        System.out.println("Custom error handler triggered!");
        return "error";  // Should render error.jsp
    }
}
