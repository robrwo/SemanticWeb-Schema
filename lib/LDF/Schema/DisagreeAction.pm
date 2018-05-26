package LDF::Schema::DisagreeAction;

# ABSTRACT: The act of expressing a difference of opinion with the object

use Moo;

extends qw/ LDF::Schema::ReactAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of expressing a difference of opinion with the object. An agent
disagrees to/about an object (a proposition, topic or theme) with
participants.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'DisagreeAction' }



=head1 SEE ALSO



L<LDF::Schema::ReactAction>

=cut

1;
