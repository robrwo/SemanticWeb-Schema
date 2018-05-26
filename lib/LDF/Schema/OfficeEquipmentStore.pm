package LDF::Schema::OfficeEquipmentStore;

# ABSTRACT: An office equipment store.

use Moo;

extends qw/ LDF::Schema::Store /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An office equipment store.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'OfficeEquipmentStore' }



=head1 SEE ALSO



L<LDF::Schema::Store>

=cut

1;
