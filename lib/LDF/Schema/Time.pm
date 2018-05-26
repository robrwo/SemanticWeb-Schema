package LDF::Schema::Time;

# ABSTRACT: A point in time recurring on multiple days in the form hh:mm:ss[Z|(+|-)hh:mm] (see <a href="http://www

use Moo;


with qw/ MooX::Role::JSON_LD /;

use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

A point in time recurring on multiple days in the form
hh:mm:ss[Z|(+|-)hh:mm] (see <a
href="http://www.w3.org/TR/xmlschema-2/#time">XML schema for details</a>).

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

sub json_ld_type { 'Time' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut


sub json_ld_fields {
    [
    ]
}



=head1 SEE ALSO


L<MooX::Role::JSON_LD>


=cut

1;
