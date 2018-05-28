package SemanticWeb::Schema::ComputerLanguage;

# ABSTRACT: This type covers computer programming languages such as Scheme and Lisp

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

This type covers computer programming languages such as Scheme and Lisp, as
well as other language-like computer representations. Natural languages are
best represented with the <a class="localLink"
href="http://schema.org/Language">Language</a> type.

=end html




=cut


around json_ld_type => sub { return 'ComputerLanguage' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
