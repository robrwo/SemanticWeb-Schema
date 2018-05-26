package LDF::Schema::WriteAction;

# ABSTRACT: The act of authoring written creative content.

use Moo;

extends qw/ LDF::Schema::CreateAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of authoring written creative content.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<in_language>

C<inLanguage>

=begin html

The language of the content or performance or used in an action. Please use
one of the language codes from the <a
href="http://tools.ietf.org/html/bcp47">IETF BCP 47 standard</a>. See also
<a class="localLink"
href="http://schema.org/availableLanguage">availableLanguage</a>.

=end html


A in_language should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Language']>

=item C<Str>

=back

=cut

has in_language => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<language>



A sub property of instrument. The language used on this action.


A language should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Language']>

=back

=cut

has language => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'WriteAction' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { inLanguage => 'in_language' },
      { language => 'language' },
    ]
};



=head1 SEE ALSO



L<LDF::Schema::CreateAction>

=cut

1;
