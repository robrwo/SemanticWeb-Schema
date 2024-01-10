use utf8;

package SemanticWeb::Schema::conditionsOfAccess;

# ABSTRACT: Conditions that affect the availability of

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'conditionsOfAccess';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Conditions that affect the availability of, or method(s) of access to, an item. Typically used for real world items such as an L<SemanticWeb::Schema::ArchiveComponent> held by an L<SemanticWeb::Schema::ArchiveOrganization>. This property is not suitable for use as a general Web access control mechanism. It is expressed only in natural language.

For example "Available by appointment from the Reading Room" or "Accessible only from logged-in accounts ". 



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
