use utf8;

package SemanticWeb::Schema::appearance;

# ABSTRACT: Indicates an occurrence of a [[Claim]] in some [[CreativeWork]].

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'appearance';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates an occurrence of a L<SemanticWeb::Schema::Claim> in some L<SemanticWeb::Schema::CreativeWork>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
