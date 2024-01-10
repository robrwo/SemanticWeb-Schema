use utf8;

package SemanticWeb::Schema::engineDisplacement;

# ABSTRACT: The volume swept by all of the pistons inside the cylinders of an internal combustion engine in a single movement

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'engineDisplacement';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The volume swept by all of the pistons inside the cylinders of an internal combustion engine in a single movement. 

Typical unit code(s): CMQ for cubic centimeter, LTR for liters, INQ for cubic inches
I< Note 1: You can link to information about how the given value has been determined using the [[valueReference]] property.
> Note 2: You can use [[minValue]] and [[maxValue]] to indicate ranges.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
