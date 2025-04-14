import { Component, inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { marked } from 'marked';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  standalone: true,
  imports: [],
})
export class AppComponent {
  title = 'hybrid-flight-components';
  readmeHtml = '';
  private http = inject(HttpClient);

  constructor() {
    this.loadReadme();
  }

  async loadReadme() {
    const data = await this.http.get('assets/readme.md', { responseType: 'text' }).toPromise();

    if (!data) return;

    const parsed = marked.parse(data);
    // falls async (Promise)
    if (typeof (parsed as { then?: unknown }).then === 'function') {
      this.readmeHtml = await (parsed as Promise<string>);
    } else {
      this.readmeHtml = parsed as string;
    }
  }
}
