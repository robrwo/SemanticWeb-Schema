use utf8;

package SemanticWeb::Schema::observationAbout;

# ABSTRACT: The [[observationAbout]] property identifies an entity

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'observationAbout';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The [[observationAbout]] property identifies an entity, often a L<SemanticWeb::Schema::Place>, associated with an L<SemanticWeb::Schema::Observation>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
