package LDF::Schema::ReplaceAction;

# ABSTRACT: The act of editing a recipient by replacing an old object with a new object.

use Moo;

extends qw/ LDF::Schema::UpdateAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of editing a recipient by replacing an old object with a new
object.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<replacee>



A sub property of object. The object that is being replaced.


A replacee should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Thing']>

=back

=cut

has replacee => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<replacer>



A sub property of object. The object that replaces.


A replacer should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Thing']>

=back

=cut

has replacer => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'ReplaceAction' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { replacee => 'replacee' },
      { replacer => 'replacer' },
    ]
};



=head1 SEE ALSO



L<LDF::Schema::UpdateAction>

=cut

1;
