use utf8;

package SemanticWeb::Schema::SteeringPositionValue;

# ABSTRACT: A value indicating a steering position.

use Moo;

extends qw/ SemanticWeb::Schema::QualitativeValue /;


use MooX::JSON_LD 'SteeringPositionValue';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v8.0.1';

=encoding utf8

=head1 DESCRIPTION

A value indicating a steering position.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::QualitativeValue>

=cut

1;
