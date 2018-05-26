package LDF::Schema::TakeAction;

# ABSTRACT: <p>The act of gaining ownership of an object from an origin

use Moo;

extends qw/ LDF::Schema::TransferAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of gaining ownership of an object from an origin. Reciprocal of
GiveAction.</p> <p>Related actions:</p> <ul> <li><a class="localLink"
href="http://schema.org/GiveAction">GiveAction</a>: The reciprocal of
TakeAction.</li> <li><a class="localLink"
href="http://schema.org/ReceiveAction">ReceiveAction</a>: Unlike
ReceiveAction, TakeAction implies that ownership has been transfered.</li>
</ul> 

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

sub json_ld_type { 'TakeAction' }



=head1 SEE ALSO



L<LDF::Schema::TransferAction>

=cut

1;
