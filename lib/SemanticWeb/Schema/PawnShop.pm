package SemanticWeb::Schema::PawnShop;

# ABSTRACT: A shop that will buy

use Moo;

extends qw/ SemanticWeb::Schema::Store /;


use MooX::JSON_LD 'PawnShop';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

A shop that will buy, or lend money against the security of, personal
possessions.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;