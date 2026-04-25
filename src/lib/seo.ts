import { company } from '../data/company';

export function buildTitle(title: string) {
  return title === company.name ? title : `${title} | ${company.name}`;
}

export function canonical(pathname: string) {
  const normalized = pathname.startsWith('/') ? pathname : `/${pathname}`;
  return `${company.website}${normalized}`;
}
