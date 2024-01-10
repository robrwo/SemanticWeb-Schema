use utf8;

package SemanticWeb::Schema::ownershipFundingInfo;

# ABSTRACT: For an [[Organization]] (often but not necessarily a [[NewsMediaOrganization]])

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'ownershipFundingInfo';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

For an L<SemanticWeb::Schema::Organization> (often but not necessarily a L<SemanticWeb::Schema::NewsMediaOrganization>), a description of organizational ownership structure; funding and grants. In a news/media setting, this is with particular reference to editorial independence.   Note that the [[funder]] is also available and can be used to make basic funder information machine-readable.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
