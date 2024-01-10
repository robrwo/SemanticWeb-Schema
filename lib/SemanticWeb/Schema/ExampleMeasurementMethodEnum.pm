use utf8;

package SemanticWeb::Schema::ExampleMeasurementMethodEnum;

# ABSTRACT: An example [[MeasurementMethodEnum]] (to remove when real enums are added).

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'ExampleMeasurementMethodEnum';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An example L<SemanticWeb::Schema::MeasurementMethodEnum> (to remove when real enums are added).



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
