<?php
class Pagination {
	public $total = 0;
	public $page = 1;
	public $limit = 20;
	public $num_links = 8;
	public $url = '';
	public $text_first = '|&lt;';
	public $text_last = '&gt;|';
	public $text_next = '<span aria-hidden="true"><svg width="30px" height="8px">
    <path fill-rule="evenodd"  fill="rgb(170, 166, 165)" d="M30.006,4.099 L29.538,4.583 L29.441,4.483 L26.036,8.005 L25.568,7.521 L28.974,3.999 L25.568,0.476 L26.036,-0.008 L29.441,3.515 L29.538,3.415 L30.006,3.898 L29.909,3.999 L30.006,4.099 ZM28.449,4.341 L-0.000,4.341 L-0.000,3.656 L28.449,3.656 L28.449,4.341 Z"/></svg></span>';
	public $text_prev = '<span aria-hidden="true"><svg width="30px" height="8px"><path fill-rule="evenodd"  fill="rgb(170, 166, 165)" d="M1.551,4.341 L1.551,3.656 L30.000,3.656 L30.000,4.341 L1.551,4.341 ZM4.431,7.521 L3.963,8.005 L0.558,4.483 L0.461,4.583 L-0.006,4.099 L0.091,3.999 L-0.006,3.898 L0.461,3.415 L0.558,3.515 L3.963,-0.008 L4.431,0.476 L1.026,3.999 L4.431,7.521 Z"/>
    </svg></span>';

	public function render() {
		$total = $this->total;

		if ($this->page < 1) {
			$page = 1;
		} else {
			$page = $this->page;
		}

		if (!(int)$this->limit) {
			$limit = 10;
		} else {
			$limit = $this->limit;
		}

		$num_links = $this->num_links;
		$num_pages = ceil($total / $limit);

		//$this->url = str_replace('%7Bpage%7D', '{page}', $this->url);

		$output = '<ul class="pagination">';

		if ($page > 1) {
         //   $output .= '<li class="page-item"><a class="page-link" href="' . str_replace(array('&amp;page={page}', '?page={page}', '&page={page}'), '', $this->url) . '">' . $this->text_first . '</a></li>';
			
			if ($page - 1 === 1) {
                $output .= '<li class="page-item"><a class="page-link" href="' . str_replace(array('&amp;page={page}', '?page={page}', '&page={page}'), '', $this->url) . '">' . $this->text_prev . '</a></li>';
			} else {
				$output .= '<li class="page-item"><a class="page-link" href="' . str_replace('{page}', $page - 1, $this->url) . '">' . $this->text_prev . '</a></li>';
			}
		}

		if ($num_pages > 1) {
			if ($num_pages <= $num_links) {
				$start = 1;
				$end = $num_pages;
			} else {
				$start = $page - floor($num_links / 2);
				$end = $page + floor($num_links / 2);

				if ($start < 1) {
					$end += abs($start) + 1;
					$start = 1;
				}

				if ($end > $num_pages) {
					$start -= ($end - $num_pages);
					$end = $num_pages;
				}
			}

			for ($i = $start; $i <= $end; $i++) {
				if ($page == $i) {
					$output .= '<li class="page-item"><a class="page-link active">' . $i . '</a></li>';
				} else {
					if ($i === 1) {
                        $output .= '<li class="page-item"><a class="page-link" href="' . str_replace(array('&amp;page={page}', '?page={page}', '&page={page}'), '', $this->url) . '">' . $i . '</a></li>';
					} else {
						$output .= '<li class="page-item"><a class="page-link" href="' . str_replace('{page}', $i, $this->url) . '">' . $i . '</a></li>';
					}
				}
			}
		}

		if ($page < $num_pages) {
			$output .= '<li class="page-item"><a class="page-link" href="' . str_replace('{page}', $page + 1, $this->url) . '">' . $this->text_next . '</a></li>';
			//$output .= '<li class="page-item"><a class="page-link" href="' . str_replace('{page}', $num_pages, $this->url) . '">' . $this->text_last . '</a></li>';
		}

		$output .= '</ul>';

		if ($num_pages > 1) {
			return $output;
		} else {
			return '';
		}
	}
}