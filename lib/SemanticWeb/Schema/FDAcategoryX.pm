use utf8;

package SemanticWeb::Schema::FDAcategoryX;

# ABSTRACT: A designation by the US FDA signifying that studies in animals or humans have demonstrated fetal abnormalities and/or there is positive evidence of human fetal risk based on adverse reaction data from investigational or marketing experience

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'FDAcategoryX';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A designation by the US FDA signifying that studies in animals or humans
have demonstrated fetal abnormalities and/or there is positive evidence of
human fetal risk based on adverse reaction data from investigational or
marketing experience, and the risks involved in use of the drug in pregnant
women clearly outweigh potential benefits.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
