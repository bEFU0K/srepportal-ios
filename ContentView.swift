import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        let cfg = WKWebViewConfiguration()
        cfg.allowsInlineMediaPlayback = true
        cfg.mediaTypesRequiringUserActionForPlayback = []
        let web = WKWebView(frame: .zero, configuration: cfg)
        web.allowsBackForwardNavigationGestures = true
        web.load(URLRequest(url: url))
        return web
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}

struct ContentView: View {
    var body: some View {
        WebView(url: URL(string: "https://srepportal.craft-host.ru")!)
            .ignoresSafeArea()
    }
}
