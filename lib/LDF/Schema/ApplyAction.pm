package LDF::Schema::ApplyAction;

# ABSTRACT: <p>The act of registering to an organization/service without the guarantee to receive it

use Moo;

extends qw/ LDF::Schema::OrganizeAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of registering to an organization/service without the guarantee
to receive it.</p> <p>Related actions:</p> <ul> <li><a class="localLink"
href="http://schema.org/RegisterAction">RegisterAction</a>: Unlike
RegisterAction, ApplyAction has no guarantees that the application will be
accepted.</li> </ul> 

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

sub json_ld_type { 'ApplyAction' }



=head1 SEE ALSO



L<LDF::Schema::OrganizeAction>

=cut

1;
