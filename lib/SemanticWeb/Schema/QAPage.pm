package SemanticWeb::Schema::QAPage;

# ABSTRACT: A QAPage is a WebPage focussed on a specific Question and its Answer(s)

use Moo;

extends qw/ SemanticWeb::Schema::WebPage /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A QAPage is a WebPage focussed on a specific Question and its Answer(s),
e.g. in a question answering site or documenting Frequently Asked Questions
(FAQs).




=cut


around json_ld_type => sub { return 'QAPage' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::WebPage>

=cut

1;
