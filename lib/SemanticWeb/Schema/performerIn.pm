use utf8;

package SemanticWeb::Schema::performerIn;

# ABSTRACT: Event that this person is a performer or participant in.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'performerIn';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Event that this person is a performer or participant in.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
