package LDF::Schema::Enumeration;

# ABSTRACT: Lists or enumerations—for example

use Moo;

extends qw/ LDF::Schema::Intangible /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Lists or enumerations—for example, a list of cuisines or music genres,
etc.




=head1 ATTRIBUTES


=head2 C<superseded_by>

C<supersededBy>

Relates a term (i.e. a property, class or enumeration) to one that
supersedes it.


A superseded_by should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Enumeration']>

=item C<InstanceOf['LDF::Schema::Property']>

=item C<InstanceOf['LDF::Schema::Class']>

=back

=cut

has superseded_by => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Enumeration' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { supersededBy => 'superseded_by' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::Intangible>

=cut

1;
