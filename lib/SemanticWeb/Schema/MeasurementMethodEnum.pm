use utf8;

package SemanticWeb::Schema::MeasurementMethodEnum;

# ABSTRACT: Enumeration(s) for use with [[measurementMethod]].

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'MeasurementMethodEnum';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.1';

=encoding utf8

=head1 DESCRIPTION

Enumeration(s) for use with [[measurementMethod]].



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
