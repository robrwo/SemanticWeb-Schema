use utf8;

package SemanticWeb::Schema::funding;

# ABSTRACT: A [[Grant]] that directly or indirectly provide funding or sponsorship for this item

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'funding';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A L<SemanticWeb::Schema::Grant> that directly or indirectly provide funding or sponsorship for this item. See also [[ownershipFundingInfo]].



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
