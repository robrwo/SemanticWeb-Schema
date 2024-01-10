use utf8;

package SemanticWeb::Schema::gettingTestedInfo;

# ABSTRACT: Information about getting tested (for a [[MedicalCondition]])

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'gettingTestedInfo';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Information about getting tested (for a L<SemanticWeb::Schema::MedicalCondition>), e.g. in the context of a pandemic.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
