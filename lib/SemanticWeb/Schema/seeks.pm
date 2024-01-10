use utf8;

package SemanticWeb::Schema::seeks;

# ABSTRACT: A pointer to products or services sought by the organization or person (demand).

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'seeks';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A pointer to products or services sought by the organization or person
(demand).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
