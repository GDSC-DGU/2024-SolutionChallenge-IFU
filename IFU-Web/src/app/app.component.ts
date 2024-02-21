import { Component, AfterViewInit, ElementRef, ViewChild } from '@angular/core';
import { RouterOutlet } from '@angular/router';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet],
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss'], // 'styleUrls' 올바르게 수정
})
export class AppComponent implements AfterViewInit {
  title = 'IFU-Web';

  @ViewChild('mainElement', { static: false }) mainElement!: ElementRef;

  constructor() {}

  ngAfterViewInit(): void {
    this.applyAnimations();
  }

  private applyAnimations(): void {
    const observer = new IntersectionObserver(
      (entries) => {
        entries.forEach((entry) => {
          if (entry.isIntersecting) {
            entry.target.classList.add('bif-section-visible');
          }
        });
      },
      {
        threshold: 0.1, // 요소가 10% 보일 때 애니메이션 실행
      }
    );

    this.mainElement.nativeElement
      .querySelectorAll('.bif-section')
      .forEach((section: Element) => {
        observer.observe(section);
      });
  }
}
