use utf8;

package SemanticWeb::Schema::disambiguatingDescription;

# ABSTRACT: A sub property of description

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'disambiguatingDescription';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A sub property of description. A short description of the item used to
disambiguate from other, similar items. Information from other properties
(in particular, name) may be necessary for the description to be useful for
disambiguation.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
