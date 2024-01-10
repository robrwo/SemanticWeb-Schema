use utf8;

package SemanticWeb::Schema::tongueWeight;

# ABSTRACT: The permitted vertical load (TWR) of a trailer attached to the vehicle

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'tongueWeight';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The permitted vertical load (TWR) of a trailer attached to the vehicle. Also referred to as Tongue Load Rating (TLR) or Vertical Load Rating (VLR).

Typical unit code(s): KGM for kilogram, LBR for pound

=over

=item *

Note 1: You can indicate additional information in the [[name]] of the L<SemanticWeb::Schema::QuantitativeValue> node.


=item *

Note 2: You may also link to a L<SemanticWeb::Schema::QualitativeValue> node that provides additional information using [[valueReference]].


=item *

Note 3: Note that you can use [[minValue]] and [[maxValue]] to indicate ranges.


=back



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
