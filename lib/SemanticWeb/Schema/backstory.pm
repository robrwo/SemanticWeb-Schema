use utf8;

package SemanticWeb::Schema::backstory;

# ABSTRACT: For an [[Article]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'backstory';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

For an L<SemanticWeb::Schema::Article>, typically a L<SemanticWeb::Schema::NewsArticle>, the backstory property provides a textual summary giving a brief explanation of why and how an article was created. In a journalistic setting this could include information about reporting process, methods, interviews, data sources, etc.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
