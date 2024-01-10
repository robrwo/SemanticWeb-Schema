use utf8;

package SemanticWeb::Schema::measurementMethod;

# ABSTRACT: A subproperty of [[measurementTechnique]] that can be used for specifying specific methods

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'measurementMethod';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A subproperty of [[measurementTechnique]] that can be used for specifying specific methods, in particular via L<SemanticWeb::Schema::MeasurementMethodEnum>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
