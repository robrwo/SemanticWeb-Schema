package LDF::Schema::RejectAction;

# ABSTRACT: <p>The act of rejecting to/adopting an object

use Moo;

extends qw/ LDF::Schema::AllocateAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of rejecting to/adopting an object.</p> <p>Related actions:</p>
<ul> <li><a class="localLink"
href="http://schema.org/AcceptAction">AcceptAction</a>: The antonym of
RejectAction.</li> </ul> 

=end html




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'RejectAction' }



=head1 SEE ALSO



L<LDF::Schema::AllocateAction>

=cut

1;
