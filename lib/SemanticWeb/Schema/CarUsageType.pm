use utf8;

package SemanticWeb::Schema::CarUsageType;

# ABSTRACT: A value indicating a special usage of a car

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'CarUsageType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v14.0.0';

=encoding utf8

=head1 DESCRIPTION

A value indicating a special usage of a car, e.g. commercial rental,
driving school, or as a taxi.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
