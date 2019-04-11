use utf8;

package SemanticWeb::Schema::SelfStorage;

# ABSTRACT: A self-storage facility.

use Moo;

extends qw/ SemanticWeb::Schema::LocalBusiness /;


use MooX::JSON_LD 'SelfStorage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.2';

=encoding utf8

=head1 DESCRIPTION

A self-storage facility.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LocalBusiness>

=cut

1;
