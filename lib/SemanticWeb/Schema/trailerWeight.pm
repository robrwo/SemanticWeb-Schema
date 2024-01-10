use utf8;

package SemanticWeb::Schema::trailerWeight;

# ABSTRACT: The permitted weight of a trailer attached to the vehicle

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'trailerWeight';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The permitted weight of a trailer attached to the vehicle.

Typical unit code(s): KGM for kilogram, LBR for pound
I< Note 1: You can indicate additional information in the [[name]] of the L<SemanticWeb::Schema::QuantitativeValue> node.
> Note 2: You may also link to a L<SemanticWeb::Schema::QualitativeValue> node that provides additional information using [[valueReference]].
* Note 3: Note that you can use [[minValue]] and [[maxValue]] to indicate ranges.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
