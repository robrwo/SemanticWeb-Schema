use utf8;

package SemanticWeb::Schema::Courthouse;

# ABSTRACT: A courthouse.

use Moo;

extends qw/ SemanticWeb::Schema::GovernmentBuilding /;


use MooX::JSON_LD 'Courthouse';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.1';

=encoding utf8

=head1 DESCRIPTION

A courthouse.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::GovernmentBuilding>

=cut

1;
