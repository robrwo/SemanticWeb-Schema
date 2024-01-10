use utf8;

package SemanticWeb::Schema::associatedArticle;

# ABSTRACT: A NewsArticle associated with the Media Object.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'associatedArticle';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A NewsArticle associated with the Media Object.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
