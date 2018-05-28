package SemanticWeb::Schema::WriteAction;

# ABSTRACT: The act of authoring written creative content.

use Moo;

extends qw/ SemanticWeb::Schema::CreateAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of authoring written creative content.




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

=item C<InstanceOf['SemanticWeb::Schema::Language']>

=item C<Str>

=back

=cut

has in_language => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'inLanguage',
    json_ld_serializer => \&_serialize_in_language,
);

sub _serialize_in_language { $_[0]->_serializer('in_language') }


=head2 C<language>



A sub property of instrument. The language used on this action.


A language should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Language']>

=back

=cut

has language => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'language',
    json_ld_serializer => \&_serialize_language,
);

sub _serialize_language { $_[0]->_serializer('language') }




around json_ld_type => sub { return 'WriteAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'inLanguage' => \&_serialize_in_language,
       'language' => \&_serialize_language,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::CreateAction>

=cut

1;
