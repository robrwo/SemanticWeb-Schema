package LDF::Schema::QAPage;

# ABSTRACT: A QAPage is a WebPage focussed on a specific Question and its Answer(s)

use Moo;

extends qw/ LDF::Schema::WebPage /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A QAPage is a WebPage focussed on a specific Question and its Answer(s),
e.g. in a question answering site or documenting Frequently Asked Questions
(FAQs).




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'QAPage' }



=head1 SEE ALSO



L<LDF::Schema::WebPage>

=cut

1;
