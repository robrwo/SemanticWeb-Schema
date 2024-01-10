use utf8;

package SemanticWeb::Schema::FDAcategoryC;

# ABSTRACT: A designation by the US FDA signifying that animal reproduction studies have shown an adverse effect on the fetus and there are no adequate and well-controlled studies in humans

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'FDAcategoryC';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A designation by the US FDA signifying that animal reproduction studies
have shown an adverse effect on the fetus and there are no adequate and
well-controlled studies in humans, but potential benefits may warrant use
of the drug in pregnant women despite potential risks.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
