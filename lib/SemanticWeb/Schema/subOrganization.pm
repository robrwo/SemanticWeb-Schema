use utf8;

package SemanticWeb::Schema::subOrganization;

# ABSTRACT: A relationship between two organizations where the first includes the second

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'subOrganization';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A relationship between two organizations where the first includes the
second, e.g., as a subsidiary. See also: the more specific 'department'
property.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
