use utf8;

package SemanticWeb::Schema::dosageForm;

# ABSTRACT: A dosage form in which this drug/supplement is available

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'dosageForm';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A dosage form in which this drug/supplement is available, e.g. 'tablet',
'suspension', 'injection'.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
