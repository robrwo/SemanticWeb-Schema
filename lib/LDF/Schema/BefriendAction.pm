package LDF::Schema::BefriendAction;

# ABSTRACT: <p>The act of forming a personal connection with someone (object) mutually/bidirectionally/symmetrically

use Moo;

extends qw/ LDF::Schema::InteractAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of forming a personal connection with someone (object)
mutually/bidirectionally/symmetrically.</p> <p>Related actions:</p> <ul>
<li><a class="localLink"
href="http://schema.org/FollowAction">FollowAction</a>: Unlike
FollowAction, BefriendAction implies that the connection is
reciprocal.</li> </ul> 

=end html



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'BefriendAction' }



=head1 SEE ALSO



L<LDF::Schema::InteractAction>

=cut

1;
