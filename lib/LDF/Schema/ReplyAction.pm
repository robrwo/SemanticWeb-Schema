package LDF::Schema::ReplyAction;

# ABSTRACT: <p>The act of responding to a question/message asked/sent by the object

use Moo;

extends qw/ LDF::Schema::CommunicateAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of responding to a question/message asked/sent by the object.
Related to <a class="localLink"
href="http://schema.org/AskAction">AskAction</a></p> <p>Related
actions:</p> <ul> <li><a class="localLink"
href="http://schema.org/AskAction">AskAction</a>: Appears generally as an
origin of a ReplyAction.</li> </ul> 

=end html



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<result_comment>

C<resultComment>

A sub property of result. The Comment created or sent as a result of this
action.


A result_comment should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Comment']>

=back

=cut

has result_comment => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'ReplyAction' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { resultComment => 'result_comment' },
    ]
};



=head1 SEE ALSO



L<LDF::Schema::CommunicateAction>

=cut

1;
