use utf8;

package SemanticWeb::Schema::originalMediaContextDescription;

# ABSTRACT: Describes

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'originalMediaContextDescription';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Describes, in a L<SemanticWeb::Schema::MediaReview> when dealing with L<SemanticWeb::Schema::DecontextualizedContent>, background information that can contribute to better interpretation of the L<SemanticWeb::Schema::MediaObject>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
