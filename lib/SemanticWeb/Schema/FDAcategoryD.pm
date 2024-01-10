use utf8;

package SemanticWeb::Schema::FDAcategoryD;

# ABSTRACT: A designation by the US FDA signifying that there is positive evidence of human fetal risk based on adverse reaction data from investigational or marketing experience or studies in humans

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'FDAcategoryD';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A designation by the US FDA signifying that there is positive evidence of
human fetal risk based on adverse reaction data from investigational or
marketing experience or studies in humans, but potential benefits may
warrant use of the drug in pregnant women despite potential risks.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
