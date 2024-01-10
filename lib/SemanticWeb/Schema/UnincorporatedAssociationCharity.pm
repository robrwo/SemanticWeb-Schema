use utf8;

package SemanticWeb::Schema::UnincorporatedAssociationCharity;

# ABSTRACT: UnincorporatedAssociationCharity: Non-profit type referring to a charitable company that is not incorporated (UK).

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'UnincorporatedAssociationCharity';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

UnincorporatedAssociationCharity: Non-profit type referring to a charitable
company that is not incorporated (UK).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
