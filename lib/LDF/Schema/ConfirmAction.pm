package LDF::Schema::ConfirmAction;

# ABSTRACT: <p>The act of notifying someone that a future event/action is going to happen as expected

use Moo;

extends qw/ LDF::Schema::InformAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of notifying someone that a future event/action is going to
happen as expected.</p> <p>Related actions:</p> <ul> <li><a
class="localLink" href="http://schema.org/CancelAction">CancelAction</a>:
The antonym of ConfirmAction.</li> </ul> 

=end html



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/ext-meta.rdf>

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'ConfirmAction' }



=head1 SEE ALSO



L<LDF::Schema::InformAction>

=cut

1;
